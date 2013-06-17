.class public Lcom/avg/tuneup/storage/StorageActivity;
.super Lcom/avg/tuneup/g;

# interfaces
.implements Lcom/avg/ui/general/c/a;


# instance fields
.field public n:Lcom/avg/tuneup/storage/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 3

    new-instance v1, Lcom/avg/ui/general/c/f;

    invoke-direct {v1, p0, p1}, Lcom/avg/ui/general/c/f;-><init>(Lcom/avg/ui/general/c/a;Landroid/view/View;)V

    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/avg/tuneup/storage/StorageActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const-string v2, "StorageFragment"

    invoke-virtual {v0, v2}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/storage/b;

    iput-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/storage/b;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    :cond_1
    invoke-virtual {v1}, Lcom/avg/ui/general/c/f;->a()V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/avg/tuneup/storage/StorageActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const-string v1, "StorageFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/storage/b;

    iput-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    invoke-virtual {v0, p1}, Lcom/avg/tuneup/storage/b;->e(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b(I)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 9

    const/16 v8, 0x9

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    new-array v4, v6, [Ljava/lang/String;

    sget v0, Lcom/avg/a/g;->by_size:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/storage/StorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    sget v0, Lcom/avg/a/g;->by_name:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/storage/StorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    new-array v0, v6, [I

    aput v8, v0, v2

    const/16 v1, 0xa

    aput v1, v0, v5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v1, v3, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-array v4, v7, [Ljava/lang/String;

    sget v0, Lcom/avg/a/g;->by_size:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/storage/StorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    sget v0, Lcom/avg/a/g;->by_name:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/storage/StorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    sget v0, Lcom/avg/a/g;->by_location:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/storage/StorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    new-array v0, v7, [I

    aput v8, v0, v2

    const/16 v1, 0xa

    aput v1, v0, v5

    const/16 v1, 0xb

    aput v1, v0, v6

    :cond_1
    move-object v6, v0

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/avg/ui/general/b/e;

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;IZ[Ljava/lang/String;Z)V

    new-instance v1, Lcom/avg/tuneup/storage/a;

    invoke-direct {v1, p0, v6}, Lcom/avg/tuneup/storage/a;-><init>(Lcom/avg/tuneup/storage/StorageActivity;[I)V

    invoke-virtual {v7, v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const-string v0, "storage_usage"

    const-string v1, "menu_opened"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/avg/tuneup/storage/StorageActivity;->finish()V

    :try_start_0
    invoke-static {}, Lcom/avg/tuneup/j;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x2442

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/avg/tuneup/storage/StorageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "Unable to find top performance class"

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/avg/tuneup/g;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/avg/a/f;->fragment_activity:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/storage/StorageActivity;->setContentView(I)V

    sget v2, Lcom/avg/a/d;->ab_ic_storage:I

    sget v3, Lcom/avg/a/d;->ab_ic_storage_p:I

    sget v0, Lcom/avg/a/g;->performance_storage:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/storage/StorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/avg/tuneup/storage/StorageActivity;->a(ZIILjava/lang/String;Z)V

    sget v0, Lcom/avg/a/d;->btn_sorting_actionbar:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/storage/StorageActivity;->c(I)V

    if-nez p1, :cond_0

    new-instance v0, Lcom/avg/tuneup/storage/b;

    invoke-direct {v0}, Lcom/avg/tuneup/storage/b;-><init>()V

    iput-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    sget v1, Lcom/avg/a/e;->middle_part:I

    const-string v2, "StorageFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/avg/tuneup/storage/StorageActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/avg/tuneup/storage/StorageActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const-string v1, "StorageFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/storage/b;

    iput-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    invoke-virtual {v0, p2}, Lcom/avg/tuneup/storage/b;->e(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/avg/tuneup/storage/StorageActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    const-string v1, "StorageFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/storage/b;

    iput-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/storage/StorageActivity;->n:Lcom/avg/tuneup/storage/b;

    invoke-virtual {v0, p1}, Lcom/avg/tuneup/storage/b;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
