using System.Windows;
using System.Windows.Controls;

namespace WpfApp1.UIItems
{
    class LayoutGrid: Grid
    {
        //--member fields--//

        //--construction--//
        /// <summary>
        /// creates a layout grid with 12 colums and 1 row!
        /// </summary>
        public LayoutGrid(): base()
        {
            //create 11 new colums, since we start out with 1 by default.
            for (int i = 1; i < 12; i++)
                this.ColumnDefinitions.Add(new ColumnDefinition());
        }

        public void AddElement(UIElement element, int col,int row, int colSpan)
        {
            //check for errors
            if (colSpan > 12)
                throw new System.ArgumentException("colSpan cannot be greater than 12!");
            if (colSpan <= 0)
                throw new System.ArgumentException("colSpan must be at least 1");
            if (row < 0)
                throw new System.ArgumentException("row must be 0 or greater");
            if (col < 0 || col > 11)
                throw new System.ArgumentException("col must be between 0 and 11");

            //okay, now we know we've got good data!
            //add more rows if we need to.
            while (row > (this.RowDefinitions.Count - 1))
                this.RowDefinitions.Add(new RowDefinition());

            //add the control
            Grid.SetRow(element, row);
            Grid.SetColumn(element, col);
            Grid.SetColumnSpan(element, colSpan);
                this.Children.Add(element);
        }
    }
}
