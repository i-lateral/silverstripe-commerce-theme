<div class="content-container container">
    <article>
        <h1>$Title</h1>
        <div class="units-row row end">
			<div class="form-holder unit-50 col-sm-4">
				$Content
				$Form
			</div>
            <div class="col-sm-4">
                <% if $Address || $PhoneNumber || $Email %>
					<p>
						<strong>Contact Info:</strong>
						<% if $Address %>
							<br />$Address
						<% end_if %>
						<% if $PhoneNumber %>
							<br />$PhoneNumber
						<% end_if %>
						<% if $Email %>
							<br />$Email
						<% end_if %>
					</p>
				<% end_if %>
            </div>
			<div class="content unit-50 col-sm-4">
				<% if $MapEmbed %>
					<div class="video-wrapper embed-responsive embed-responsive-4by3">
						$MapEmbed
					</div>
				<% end_if %>				
			</div>
		</div>
    </article>

        $PageComments
</div>
