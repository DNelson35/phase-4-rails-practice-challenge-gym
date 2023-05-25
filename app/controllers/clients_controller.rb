class ClientsController < ApplicationController

    def show
        client = Client.find(params[:id])
        render json: client, methods: [:membership_count], status: :ok
    end
end
