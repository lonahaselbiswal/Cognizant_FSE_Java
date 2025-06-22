public class SearchingAlgos {

    // Linear Search
    public static Product linearSearch(Product[] products, int targetId) {
        for (Product p : products) {
            if (p.productId == targetId) {
                return p;
            }
        }
        return null;
    }

    // Binary Search 
    public static Product binarySearch(Product[] products, int targetId) {
        int left = 0, right = products.length - 1;

        while (left <= right) {
            int mid = (left + right) / 2;
            if (products[mid].productId == targetId) {
                return products[mid];
            } else if (products[mid].productId < targetId) {
                left = mid + 1;
            } else {
                right = mid - 1;
            }
        }
        return null;
    }

    public static void main(String[] args) {
        Product[] products = {
            new Product(101, "Phone", "Electronics"),
            new Product(102, "TV", "Electronics"),new Product(103, "Notebook", "Stationery"),
            new Product(104, "Keyboard", "Electronics"),
            new Product(105, "Shoes", "Fashion"),
            
        };

        System.out.println(" Linear Search Result:");
        Product found1 = linearSearch(products, 103);
        System.out.println(found1 != null ? found1 : "Product not found");

        System.out.println("\n Binary Search Result:");
        Product found2 = binarySearch(products, 103);
        System.out.println(found2 != null ? found2 : "Product not found");
    }
}

//Talking about Time Complexity..Linear Search => O(n)..Where as Binary Search => O(log n)
//Linear Search is Best Suited for Small datasets..
//Binary search is best suited for Large datasets..And it also requires Sorted inputs..