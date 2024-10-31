class HomePage
    def initialize(driver)
      @driver = driver
    end
  
    def open(url)
      @driver.navigate.to url
    end
  
    def search_product(product_name)
      search_box = @driver.find_element(css: 'input[placeholder="Buscar produtos, marcas e muito mais…"]')
      search_box.send_keys product_name
      search_button = @driver.find_element(css: 'button.nav-search-btn[type=submit]')
      search_button.click
    end
  
    def click_first_product
      @driver.find_element(css: '.ui-search-layout__item').click
    end
  
    def navigate_gallery
      sleep 1
      gallery_image = @driver.find_element(css: '.ui-pdp-gallery__figure')
      gallery_image.click
      
      next_button = @driver.find_element(css: 'button[title="Next (arrow right)"]')
      3.times { next_button.click }
    end
  end
  