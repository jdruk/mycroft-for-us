#!/bin/bash
rails db:drop:all
rails db:create:all
rails db:migrate 
rails db:seed
