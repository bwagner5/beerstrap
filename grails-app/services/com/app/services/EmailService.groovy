package com.app.services

import java.util.Map;

class EmailService {
	
	static transactional = false
	static String emailPrefixDefault = "[Grails-BS]"
	
	def mailService
	
    def register(Map opt) {
		
		String email = opt.email
		String sub = (opt.subject)?(opt.subject):'Subject'
		String text = (opt.body)?(opt.body):"Here is your confirmation code ${opt.urlToken}"
		
		if(email){
			mailService.sendMail {
				to email
				subject sub
				//body(view:'/email/prueba')
				html text
			 }
		}
    }
	
	def forgotPassword(Map opt){
	
		String email = opt.email
		String sub = (opt.subject)?(opt.subject):'Subject'
		String text = (opt.body)?(opt.body):"Hello, Here is your url to create a new password <a href=${opt.urlToken}>Link</a>"
		
		if(email){
			mailService.sendMail {
				to email
				subject sub
				//body(view:'/email/prueba')
				html text
			 }
		}
		
		
	}
	
	def general(Map opt){
		String email = opt.email
		String sub = (opt.subject)?:'Subject'
		String text = (opt.body)?:'Body'
		
		mailService.sendMail {
			to email
			subject sub
			html text
		 }
	}
}