pragma solidity ^0.4.8;
contract Review {

    Review[] public reviews;
    struct Review {
        bytes32 companyName;
        bytes32 companyReviewer;
        uint companyReview;
    }

    function addReview (bytes32 _companyName, bytes32 _companyReviewer, uint _companyReview) payable returns (bool success) {
        Review memory newReview;
        newReview.companyName = _companyName;
        newReview.companyReviewer = _companyReviewer;
        newReview.companyReview = _companyReview;

        reviews.push(newReview);
        return true;
    }

    function getReviews() constant returns (bytes32[], bytes32[], uint[]) {

        uint length = reviews.length;
        bytes32[] memory companyNames = new bytes32[](length);
        bytes32[] memory companyReviewers = new bytes32[](length);
        uint[] memory companyReviews = new uint[](length);

        for (uint i=0; i<reviews.length; i++) {
            Review memory currentReview;
            currentReview = reviews[i];

            companyNames[i]=currentReview.companyName;
            companyReviewers[i]=currentReview.companyReviewer;
            companyReviews[i]=currentReview.companyReview;

        }
        return (companyNames, companyReviewers, companyReviews);
    }
}
