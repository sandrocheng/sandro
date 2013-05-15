.class Lcom/avast/android/generic/filebrowser/b;
.super Ljava/lang/Object;
.source "AbstractFileBrowserFragment.java"

# interfaces
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 6

    .prologue
    .line 129
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c()Ljava/util/List;

    move-result-object v0

    .line 130
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v5}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    iget-object v5, v5, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    invoke-virtual {v5, v0}, Lcom/avast/android/generic/filebrowser/a;->a(I)Lcom/avast/android/generic/filebrowser/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/avast/android/generic/filebrowser/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_0
    const-string v0, "result"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 144
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 145
    return-void

    .line 139
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v3}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    iget-object v3, v3, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a:Lcom/avast/android/generic/filebrowser/a;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/filebrowser/a;->a(I)Lcom/avast/android/generic/filebrowser/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/avast/android/generic/filebrowser/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 99
    iget-object v1, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    iget-object v1, v1, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sget v2, Lcom/avast/android/generic/t;->ao:I

    if-ne v1, v2, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/avast/android/generic/filebrowser/b;->a()V

    .line 102
    const/4 v0, 0x1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v1}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Lcom/actionbarsherlock/view/ActionMode$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Lcom/actionbarsherlock/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    iget-object v0, v0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Lcom/actionbarsherlock/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Lcom/actionbarsherlock/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/w;->a:I

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 82
    sget v0, Lcom/avast/android/generic/z;->cy:I

    invoke-virtual {p1, v0}, Lcom/actionbarsherlock/view/ActionMode;->setTitle(I)V

    .line 83
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->b(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 85
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;Lcom/actionbarsherlock/view/ActionMode;)Lcom/actionbarsherlock/view/ActionMode;

    .line 117
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    iget-object v0, v0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 119
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 120
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->b(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Lcom/actionbarsherlock/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Lcom/actionbarsherlock/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V

    goto :goto_0
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    iget-object v0, v0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->c:Ljava/lang/String;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Lcom/actionbarsherlock/view/ActionMode$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/b;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->a(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Lcom/actionbarsherlock/view/ActionMode$Callback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/actionbarsherlock/view/ActionMode$Callback;->onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
