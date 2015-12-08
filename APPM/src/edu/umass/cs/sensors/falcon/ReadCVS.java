package edu.umass.cs.sensors.falcon;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.LinkedList;
 
public class ReadCVS {
 
  private String csvFile = "";
 
  public ReadCVS(String fn){
	  csvFile = fn;
  }
  public Result run() {
	
	BufferedReader br = null;
	String line = "";
	String cvsSplitBy = ",";
	LinkedList<String> names = new LinkedList<String>();
	LinkedList<String> tps = new LinkedList<String>();
	try {
		br = new BufferedReader(new FileReader(csvFile));
		while ((line = br.readLine()) != null) {
		    // use comma as separator
			String[] ss = line.split(cvsSplitBy);
 
			//System.out.println("Country [code= " + country[4] + " , name=" + country[5] + "]");
			names.add(ss[2]);
			tps.add(ss[3]);
		}
 
	} catch (FileNotFoundException e) {
		e.printStackTrace();
	} catch (IOException e) {
		e.printStackTrace();
	} finally {
		if (br != null) {
			try {
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	return new Result(names, tps);
  }
 
}