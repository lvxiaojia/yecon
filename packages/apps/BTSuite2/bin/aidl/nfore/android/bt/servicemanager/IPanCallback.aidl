/** 
 * nForeTek PAN callback interface for Android
 *
 * Copyright (C) 2011-2019  nForeTek Corporation
 *
 * 
 * @author Fan	<fan.lin@nforetek.com>
 * @version 20130531
 */

package nfore.android.bt.servicemanager;

/**
 * The callback interface for PAN profile.
 * UI program should implement all methods of this interface 
 * for receiving the possible callback from nFore service.
 */
 

interface IPanCallback {

	/* ======================================================================================================================================================== 
	 * Callback function of state changed event to PAN
	 */
	
	/** 
	 * Callback to inform change in PAN state of remote connected device with given Bluetooth hardware address.
	 * Bluetooth hardware addresses would be in a format such as "00:11:22:33:AA:BB".
	 * The possible values of state in this profile are 
	 * 		<p><blockquote>STATE_NOT_INITIALIZED	(int) 100
	 * 		<br>STATE_READY				(int) 110
	 * 		<br>STATE_CONNECTING		(int) 120
	 *		<br>STATE_CONNECTED			(int) 140
	 * Parameter address is only valid in state STATE_CONNECTING, STATE_CONNECTED.
	 * In state STATE_NOT_INITIALIZED and STATE_READY, parameter address might contain unavailable content or 
	 * DEFAULT_ADDRESS , which is 00:00:00:00:00:00.
	 *
	 * @param address : Bluetooth MAC address of remote device which involves state changed.
	 * @param prevState : the previous state. 
	 * The value of this parameter would be the same as newState if the new state is STATE_NOT_INITIALIZED.
	 * @param newState : the new state.
	 * @param reason : The reason of state changed. -1 means that is in the right steps. Possible values are
	 * 		<p><blockquote>ERROR_DEVICE_PATH_NULL		        (int) 700
	 * 		<br>ERROR_UNSATISIFIED_STATE						(int) 701	 
	 * 		<br>ERROR_DBUS_SEND_MESSAGE_FAIL					(int) 702
	 *		<br>ERROR_BLUEZ_CONNECT_FAIL						(int) 703
 	 *		<br>ERROR_STOP_DHCP_FAIL							(int) 704
 	 *		<br>ERROR_DHCP_FAIL									(int) 705</blockquote>	
 	 	
	 */
	void onPanStateChanged(String address, int prevState, int newState, int reason);

}
