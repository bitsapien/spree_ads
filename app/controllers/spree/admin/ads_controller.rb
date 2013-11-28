# encoding: utf-8
module Spree
  module Admin
    class AdsController < Admin::ResourceController

      def index
        @ads = Spree::Ad.page(params[:page]).per(params[:per_page] || Spree::Config[:orders_per_page])
      end

      def new
        @ad = Spree::Ad.new
        @ad.save(validate: false)
        redirect_to edit_admin_ad_url(@ad)
      end

      def edit
        @ad = Spree::Ad.find(params[:id])
      end

      def update
        @ad = Spree::Ad.find(params[:id])
        if params[:ad][:file_name]
          uploaded_io = params[:ad][:file_name]
          new_file_name = uploaded_io.original_filename.gsub(' ','')

          File.open(Rails.root.join('public', 'ads', new_file_name), 'wb') do |file|
            file.write(uploaded_io.read)
          end
          @ad.file_name = new_file_name
        end

        @ad.name = params[:ad][:name]
        @ad.url = params[:ad][:url]
        @ad.width = params[:ad][:width]
        @ad.height = params[:ad][:height]

        @ad.position = params[:ad][:position]
        @ad.tag = params[:ad][:tag]
        @ad.enabled = params[:ad][:enabled]

        if @ad.save
          redirect_to admin_ads_path, notice: 'Updated!'
        else
          render :action => :edit
        end
      end

      def destroy
        ad = Spree::Ad.find(params[:id])

        if ad.file_name != nil
          File.unlink(Rails.root.join('public', 'ads', ad.file_name))
        end

        if ad.destroy
          redirect_to admin_ads_path, notice: 'Deleted!'
        else
          redirect_to admin_ads_path
        end
      end

    end
  end
end
