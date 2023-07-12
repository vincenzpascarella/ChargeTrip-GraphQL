# ChargeTrip-GraphQL

In this [tutorial](https://vincenzopascarella.medium.com/b7f3af193a6c?source=friends_link&sk=1e638a232c7e9d6162e1d3d13b754387), we explored how to integrate GraphQL into an iOS app using the Apollo iOS SDK. We covered the steps required to set up the Apollo iOS SDK, authenticate requests, write GraphQL queries, and display the retrieved data in a SwiftUI user interface.

## Here are the key points we covered:

1. We added the `Apollo iOS SDK` to our project by adding the package using Swift Package Manager. This allowed us to leverage the power of **GraphQL** and the **Apollo** client library.

2. We set up the `Codegen CLI` to generate `Swift` code from our **GraphQL** `schema` and `queries`. This code generation process automated the creation of types and queries, making it easier to work with **GraphQL** in our app.

3. We created our first **GraphQL** `query` and added it to **Xcode**. This `query` requested data from the server, and we used the generated code to execute the `query` and retrieve the results.

4. We implemented **authentication** for our requests by adding an authentication `interceptor` to the `ApolloClient`. This `interceptor` added the necessary headers to authenticate our requests with the server.

5. We adjusted the `ViewModel` to handle the data retrieval and provide utility functions for displaying the data in our **UI**. We used the `ObservableObject` protocol to create a reactive view model that updates the **UI** when the data changes.

6. We implemented a simple `SwiftUI` user interface to display the fetched data. We used the `@StateObject` property wrapper to create an instance of the view model, and the `List` view to display the list of stations with their respective owner names and addresses.

## Conclusion

By following this tutorial, you have learned the fundamentals of integrating **GraphQL** into an **iOS** app using the `Apollo iOS SDK`. You now have the knowledge to build more complex **GraphQL-powered apps** and leverage the power of **GraphQL** to efficiently fetch and manipulate data from a server.

Happy coding!
