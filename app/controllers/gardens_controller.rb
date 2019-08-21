class GardensController < ApplicationController

  def show
    @garden = Garden.find(params[:id])
    @garden_plants = {
      "beetroot" => "https://cdn3.iconfinder.com/data/icons/thanksgiving-2-1/48/101-512.png",
      "Cherry tomato" => "https://www.flaticon.com/premium-icon/icons/svg/2039/2039516.svg",
      "Cucumber" => "https://cdn3.iconfinder.com/data/icons/vegetables-18/100/vegetable_colour-15-512.png",
      "Chilli Pepper" => "https://cdn3.iconfinder.com/data/icons/thanksgiving-2-1/48/101-512.png",
      "Fennel" => "https://cdn3.iconfinder.com/data/icons/thanksgiving-2-1/48/101-512.png",
      "Leek" => "https://cdn3.iconfinder.com/data/icons/thanksgiving-2-1/48/101-512.png",
      "Pumpkin" => "https://cdn3.iconfinder.com/data/icons/thanksgiving-2-1/48/101-512.png",
      "Zucchini" => "https://cdn3.iconfinder.com/data/icons/thanksgiving-2-1/48/101-512.png",
      "Pepper" => "https://cdn3.iconfinder.com/data/icons/thanksgiving-2-1/48/101-512.png",
      "Strawberry" => "https://cdn3.iconfinder.com/data/icons/thanksgiving-2-1/48/101-512.png",
      "Lettuce" => "https://cdn3.iconfinder.com/data/icons/thanksgiving-2-1/48/101-512.png",
      "Cauliflower" => "https://cdn3.iconfinder.com/data/icons/thanksgiving-2-1/48/101-512.png",
      "Rhubarb" => "https://cdn3.iconfinder.com/data/icons/thanksgiving-2-1/48/101-512.png",
      "carrot" => "https://cdn3.iconfinder.com/data/icons/thanksgiving-2-1/48/101-512.png"
    }
  end
end
