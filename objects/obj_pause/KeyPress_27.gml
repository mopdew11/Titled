if(!pause && !inventory)
{
	pause = true;
	instance_deactivate_all(true);
}
else
{
	pause = false;
	inventory = false;
	instance_activate_all();
}