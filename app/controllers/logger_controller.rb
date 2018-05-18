class LoggerController < ApplicationController
  def log
  	evn = Event.new
  	evn.wp_user_id = params[:wp_id]
  	evn.address = params[:address]
  	evn.message = params[:message]
  	evn.trx_id = params[:trx_id]
  	evn.save

  	render json: evn
  end

  def logs_by_wp_id

  	evns = Event.where(wp_user_id: params[:wp_id]).reverse.as_json
  	evns.each do |evn|
  		evn['formatted_date'] = evn["created_at"].strftime("%d/%m/%Y")
  	end

  	render json: evns

  end

  def logs_by_address

  	evns = Event.where(address: params[:address]).reverse.as_json

  	render json: evns

  end
end
