.class Lcom/avast/android/mobilesecurity/filebrowser/g;
.super Ljava/lang/Object;
.source "SystemFileBrowserFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/filebrowser/g;->a:Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 57
    :goto_0
    return v0

    .line 51
    :pswitch_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/filebrowser/g;->a:Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->a(Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;)Ljava/util/List;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/filebrowser/g;->a:Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not really deleting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 54
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x7f07023a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/g;->a:Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 38
    const v0, 0x7f0c014e

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/view/ActionMode;->setTitle(I)V

    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/g;->a:Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 63
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/g;->a:Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 64
    return-void
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
