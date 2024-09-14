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

This exercise is about the basic mechanics of forms and handling form data/requests in the app.

#### Step 1: Edit a single field.

1. **add path:** add a `"resource/<int:pk>/edit"` path to `study_buddy_app/urls.py`
 
2. **add view:** the edit and create views in meetup use Form classes and are quite generic, for the first tryout something simple like this is sufficient:

```python
    @login_required
    def edit(request, pk):
        resource = get_object_or_404(Resource, pk=pk)
        context = {"resource": resource,
                   "http_method": 'POST',
                   "action_url": reverse(
                       'studybuddy_app:resource.detail',
                       args=(pk,)),
                   "button_text": 'Save'
                   }
        return render(request, "studybuddy_app/resource_form.html", context)

```

3. **create a form:** copy the form from meetup and add one text input field for the field you want to edit.
   the input field `name` attribute should match the field name you want to edit, as it will be the key in
   the POST dict.

3. **process request:** add a view to process the post: implement a 
`post` method in your `DetailView`:
The Rest convention is to post to resource/:pk to update an resource. Thus, add a post method to your DetailView, read the field out of the POST parameters, add it to your model and save it.  

```python
    def post(self, request, *args, **kwargs):
        object = self.get_object()
        object.description = request.POST['description']
        object.save()
        return HttpResponseRedirect(
            reverse("studybuddy_app:resource.detail",
                    args=[object.id]))
```

#### Step 2: Use django Forms 
... for automatic form field rendering and validation.

1. in studybuddy_app/forms.py add a ModelForm for your Resource:

```python
    class ResourceForm(forms.ModelForm):
        class Meta:
            model = Resource
        exclude = ('some_field',)
```

2. in the view, instantiate the form and add it to the context handed to the template:

```python
   form = ResourceForm(instance=resource)
```
3. add it to the form template - this will render only the fields, keep the form and submit elements:

```python
    {{ form.as_p }}
```

4. construct and save the form in the view:

```python
    def post(self, request, *args, **kwargs):
        object = self.get_object()
        form = ResourceForm(request.POST, instance=object)
        form.save()
        return HttpResponseRedirect(
            reverse("studybuddy_app:resource.detail",
                    args=[object.id]))
```

5. examine the rendered form html in the browser.
6. examine the parameters in the POST
open the debug toolbar (icon in the upper right), activate "Intercept redirects", send the edit form again and have a look at the request sent by the form.

Note that the examples here include no error handling at all, they've been kept simple to make the core process visible.
If you want to, you can amend them with error handling as in the Meetup example.

### For the bored: add model creation

This is done using the same flow as for editing. Instead of 

    edit -> form -> update
it is

    new -> form -> create

with some minor changes: 
- new: you start with a new instance of the resource
- form: you post to the **/resource list** instead to the **/resources/:pk detail** view
- create: construct new resource from form data

In the edit/update, the resource object is retrieved from the database - for the edit to populate the form, and for the update to
keep fields that are not updated. This is not necessary (or possible) for create/update.
       
### Write-Up

- upload a link to your team repo and
- a brief report on problems and solutions you've encountered
- include the model and page sketch in your report

