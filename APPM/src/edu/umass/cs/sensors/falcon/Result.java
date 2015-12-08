package edu.umass.cs.sensors.falcon;

import java.util.LinkedList;

public class Result {

	private LinkedList<String> names;
	private LinkedList<String> timepoints;
	public Result(LinkedList<String> ns, LinkedList<String> tps){
		names = ns;
		timepoints = tps;
	}
	
	public LinkedList<String> getNames(){
		return names;
	}
	public LinkedList<String> getTPs(){
		return timepoints;
	}
}
