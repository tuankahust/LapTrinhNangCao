/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModelObject;

import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartFrame;
import org.jfree.chart.JFreeChart;
import org.jfree.data.general.DefaultPieDataset;

/**
 *
 * @author hieupt
 */
public class TestChart
{
    public static void main(String[] args) {
// create a dataset...
DefaultPieDataset data = new DefaultPieDataset();
data.setValue("Category 1", 1000);
data.setValue("Category 2", 27.9);
data.setValue("Category 3", 79.5);
// create a chart...
JFreeChart chart = ChartFactory.createPieChart(
"Sample Pie Chart",
data,
true, // legend?
true, // tooltips?
false // URLs?
);
// create and display a frame...
ChartFrame frame = new ChartFrame("First", chart);
frame.pack();
frame.setVisible(true);
}
}
