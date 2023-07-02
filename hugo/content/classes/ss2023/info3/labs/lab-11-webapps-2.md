---
title: '11 - Web Applications 2'
author: kleinen
draft: true
weight: 110
---


## Prelab

**P1.**  Bring your Application from last Week.

## Assignment

### Part 1: Amend the Page Structure

Change the index and home pages (Home and StudyBuddy in the navigation) if appropriate. 

### Part 2: Make your Model Editable

Last Week, you've created a Detail View for your Model. 
make your model editable by adding the appropriate paths, views and last not least a template with a form for editing your model.

This exercise is about the basic mechanics of forms and handling form data/requests in the app. You don't need to edit associations, and may restrict the number and type of fields if needed.

#### Step 1: Edit a single field.

1. add path
    - add a `.../<int:pk>/edit` path to `study_buddy_app/urls.py`
    - import and implement the view
    - use 
2. add view: the edit and create views in meetup use Form classes and are quite generic, for now something simple like below would be enough:

```python
    @login_required
    def edit(request, pk):
        proposal = get_object_or_404(Proposal, pk=pk)
        context = {"proposal": proposal,
                   "http_method": 'POST',
                   "action_url": reverse(
                       'studybuddy_app:proposal.detail',
                       args=(pk,)),
                   "button_text": 'Save'
                   }
        return render(request, "studybuddy_app/proposal_form.html", context)

```

3. Create a Form: copy the form from meetup and add one text input field for the field you want to edit.
   the input field `name` attribute should match the field name you want to edit, as it will be the key in
   the POST dict.

3. Process: add view to process the post: post on detail view
The Rest convention is to post to resource/:pk to update an resource. Thus, add a post method to your DetailView, read the field out of the POST parameters, add it to your model and save it.  

```python
    def post(self, request, *args, **kwargs):
        object = self.get_object()
        object.description = request.POST['description']
        object.save()
        return HttpResponseRedirect(
            reverse("studybuddy_app:proposal.detail",
                    args=[object.id]))
```

#### Step 2: Use django Forms 
... for automatic form creating and validation.

1. in studybuddy_app/forms.py add a ModelForm for your Resource:

```python
    class ProposalForm(forms.ModelForm):
        class Meta:
            model = Proposal
        exclude = ('some_field',)
```

2. in the view, instantiate the form and add it to the context handed to the template:

```python
   form = ProposalForm(instance=proposal)
```
3. add it to the form template - this will render only the fields, keep the form and submit elements:

```python
    {{ form.as_p }}
```

4. construct and save the form in the view:

```python
    def post(self, request, *args, **kwargs):
        object = self.get_object()
        form = ProposalForm(request.POST, instance=object)
        form.save()
        return HttpResponseRedirect(
            reverse("studybuddy_app:proposal.detail",
                    args=[object.id]))
```

Note that the examples here include no error handling at all, they've been kept simple to make the process visible.
If you want to, you can amend them with error handling as in the Meetup example.
       
### Write-Up

- upload a link to your team repo and
- a brief report on problems and solutions you've encountered
- include the model and page sketch in your report

