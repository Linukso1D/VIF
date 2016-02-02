<?php
class ControllerModuleSlideshow extends Controller {
	public function index($setting) {
		static $module = 0;

		$this->load->model('design/banner');
		$this->load->model('tool/image');
       $this->language->load('module/news');
		$this->load->model('extension/news');
		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');

		 
 $filter_data = array(
			'page' => 1,
			'limit' => 4,
			'start' => 0,
		);
        $all_news = $this->model_extension_news->getAllNews($filter_data);
        foreach ($all_news as $news) {
			$data['banners'][] = array (
				'title' 		=> html_entity_decode($news['title'], ENT_QUOTES),
                'image'			=> $this->model_tool_image->resize($news['image'], $setting['width'], $setting['height']),
                'description' 	=> (mb_strlen(strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES))) > 100 ? mb_substr(strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES)), 0, 100) . '...' : strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES))),
				'link' 			=> $this->url->link('information/articles/articles', 'news=' . $news['news_id']),
				'date_added' 	=> date($this->language->get('date_format_short'), strtotime($news['date_added']))
			);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/slideshow.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/slideshow.tpl', $data);
		} else {
			return $this->load->view('default/template/module/slideshow.tpl', $data);
		}
	}
}
