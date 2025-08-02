current_building = undefined;

building_layers = ["BuildingUI", "TrainUpgradeUI", "BankUI", "CraneUI", "ToyBoxUI"];

for (var i = 0; i < array_length(building_layers); i++) {
	layer_set_visible(building_layers[i], false);	
}