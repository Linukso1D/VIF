<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));
        //**
		$this->load->model('catalog/information');
        	$information_info = $this->model_catalog_information->getInformation(4);

		if ($information_info) {
			$this->document->setTitle($information_info['meta_title']);
			$this->document->setDescription($information_info['meta_description']);
			$this->document->setKeywords($information_info['meta_keyword']);

			$data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');
        }

        //**
        //articles
        	$this->language->load('module/articles');
            $this->load->model('extension/articles');
            $filter_data = array(
                    'page' => 1,
                    'limit' => 4,
                    'start' => 0,
                );

	 

	 
		$all_articles = $this->model_extension_articles->getAllArticles($filter_data);
	 
		$data['all_articles'] = array();
	 
        $this->load->model('tool/image');
		foreach ($all_articles as $articles) {
			$data['all_articles'][] = array (
				'title' 		=> html_entity_decode($articles['title'], ENT_QUOTES),
                'image'			=> $this->model_tool_image->resize($articles['image'], 250, 170),
				'description' 	=> (mb_strlen(strip_tags(html_entity_decode($articles['short_description'], ENT_QUOTES))) > 180 ? mb_substr(strip_tags(html_entity_decode($articles['short_description'], ENT_QUOTES)), 0, 180) . '...' : strip_tags(html_entity_decode($articles['short_description'], ENT_QUOTES))),
				'link' 			=> $this->url->link('information/articles/articles', 'articles_id=' . $articles['articles_id']),
				'date_added' 	=> date($this->language->get('date_format_short'), strtotime($articles['date_added']))
			);
		}
	   
		
        //articles
        
        //category
	        $this->load->model('catalog/category');
        	$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			$children_data = array();
            
			$data['categories'][] = array(
				'category_id' => $category['category_id'],
				'name'        => $category['name'],
                'image'		  => $this->model_tool_image->resize($category['image'], 219, 212),
				'href'        => $this->url->link('product/category', 'path=' . $category['category_id'])
			);
		}
        //category
        
        
        
		if (isset($this->request->get['route'])) {
			$this->document->addLink(HTTP_SERVER, 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/home.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/home.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/home.tpl', $data));
		}
	}
}