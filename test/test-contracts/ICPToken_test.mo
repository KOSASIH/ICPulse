import ICPToken from "../../contracts/ICPToken.mo";

actor test_ICPToken() {
    public func test_transfer() : async bool {
        // Initialize the contract and test its transfer function
        let icpToken = ICPToken.ICPToken();
        let sender = Principal.fromText("your_principal_id");
        let receiver = Principal.fromText("receiver_principal_id");
        let initialBalance = 100;
        let transferAmount = 50;

        // Deploy the contract
        let deployed = await icpToken.deploy();

        // Mint tokens for the sender
        await deployed.mint(sender, initialBalance);

        // Transfer tokens
        let result = await deployed.transfer(receiver, transferAmount);

        // Check if the transfer was successful
        assert(result, "Transfer failed");

        return true;
    };
};
