package splash;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.*;

public class InformationReporting {
	
	public List<GarbageInfo> selectData()
	{
	
		final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	    final String DB_URL = "jdbc:mysql://localhost:3306/EAD";

		  	  
		 //  Database credentials
	     final String USER = "root";
	     final String PASS = "root";
	     
	     List<GarbageInfo> ls = new ArrayList<GarbageInfo>();

		
		 Connection conn = null;
		 Statement stmt = null;
		
		
		  
		try{
		     //STEP 2: Register JDBC driver
		     Class.forName("com.mysql.jdbc.Driver");

		     //STEP 3: Open a connection
		     //System.out.println("Connecting to database...");
		     conn = DriverManager.getConnection(DB_URL,USER,PASS);

		     //STEP 4: Execute a query
		     //System.out.println("Creating statement...");
		     stmt = conn.createStatement();
		     String sql;
		     sql = "SELECT * FROM garbageinfo";
		     //System.out.println("Executing : "+ sql);
		     ResultSet rs = stmt.executeQuery(sql);

		     //STEP 5: Extract data from result set
		     while(rs.next()){
		        //Retrieve by column name
		    	 
		    	 GarbageInfo garbageInfo = new GarbageInfo(); 
		    	 
		     /*  int clientId = rs.getInt("client_id");
		    	 String clientType = rs.getString("client_type");
		    	 int serialNumber = rs.getInt("serial_number");
		    	 double disableTimeOut = rs.getDouble("version");
		    	 String batteryLevel = rs.getString("battery_level");
		    */	 
		    	 
		    	 garbageInfo.setCity(rs.getString("city"));
		    	 garbageInfo.setLatitude(rs.getString("latitude"));
		    	 garbageInfo.setLongitude(rs.getString("longitude"));
		    	 garbageInfo.setAltitude(rs.getString("altitude"));
		    	 garbageInfo.setActionRequired(rs.getString("action_required"));
		    	 
		    	 ls.add(garbageInfo);
		         
		     } 
		     
		     //STEP 6: Clean-up environment
		     rs.close();
		     stmt.close();
		     conn.close();
		     
		  }catch(SQLException se){
		     //Handle errors for JDBC
		     se.printStackTrace();
		  }catch(Exception e){
		     //Handle errors for Class.forName
		     e.printStackTrace();
		  }finally{
		     //finally block used to close resources
		     try{
		        if(stmt!=null)
		           stmt.close();
		     }catch(SQLException se2){
		     }// nothing we can do
		     try{
		        if(conn!=null)
		           conn.close();
		     }catch(SQLException se){
		        se.printStackTrace();
		     }//end finally try
		  }//end try
		
		//System.out.println("Goodbye!");

           return ls; 
		
	}

}
