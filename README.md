# Header Ask a Question Button
Adds an "Ask a Question" button to the header which links to the post page with board selector. If the user is already on a board that board will already be selected on the post page.

## Button
**custom-question-button.ftl** is a custom component (named custom.question-button in studio) that can be added to the Page Header section of the wrapper. **page-header-new.ftl** is our header with the button added.

## Tracking
**custom-question-button-tracking.ftl** is a custom component to be added to the post page. If the source=header parameter is present this adds HTML with a data attribute with the value **headerbuttontrackingcode** to the post. This can be used to filter a CSV export of community search results to find posts made with the Ask a Question button. Filter column B (Message Body) with Text Filters -> Contains -> **headerbuttontrackingcode**