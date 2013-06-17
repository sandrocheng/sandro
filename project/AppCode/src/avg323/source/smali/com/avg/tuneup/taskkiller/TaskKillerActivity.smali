.class public Lcom/avg/tuneup/taskkiller/TaskKillerActivity;
.super Lcom/avg/tuneup/g;

# interfaces
.implements Lcom/avg/ui/general/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/tuneup/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->middle_part:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/taskkiller/n;

    new-instance v1, Lcom/avg/ui/general/c/f;

    invoke-direct {v1, p0, p1}, Lcom/avg/ui/general/c/f;-><init>(Lcom/avg/ui/general/c/a;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/avg/tuneup/taskkiller/n;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/avg/ui/general/c/f;->a()V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->middle_part:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/taskkiller/n;

    invoke-virtual {v0, p1}, Lcom/avg/tuneup/taskkiller/n;->e(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 8

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-array v4, v3, [Ljava/lang/String;

    sget v0, Lcom/avg/a/g;->by_ram:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    sget v0, Lcom/avg/a/g;->by_name:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    new-array v6, v3, [I

    const/16 v0, 0xc

    aput v0, v6, v2

    const/16 v0, 0xa

    aput v0, v6, v1

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/avg/ui/general/b/e;

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/avg/ui/general/b/e;-><init>(Landroid/content/Context;IZ[Ljava/lang/String;Z)V

    new-instance v1, Lcom/avg/tuneup/taskkiller/c;

    invoke-direct {v1, p0, v6}, Lcom/avg/tuneup/taskkiller/c;-><init>(Lcom/avg/tuneup/taskkiller/TaskKillerActivity;[I)V

    invoke-virtual {v7, v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const-string v0, "task_killer"

    const-string v1, "menu_opened"

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v3, v2}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public i()V
    .locals 2

    invoke-virtual {p0}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->finish()V

    :try_start_0
    invoke-static {}, Lcom/avg/tuneup/j;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x2442

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->startActivity(Landroid/content/Intent;)V
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

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->setContentView(I)V

    sget v2, Lcom/avg/a/d;->ab_ic_task_killer:I

    sget v3, Lcom/avg/a/d;->ab_ic_task_killer_p:I

    sget v0, Lcom/avg/a/g;->title_task_killer_preference:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->a(ZIILjava/lang/String;Z)V

    sget v0, Lcom/avg/a/d;->btn_sorting_actionbar:I

    invoke-virtual {p0, v0}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->c(I)V

    if-nez p1, :cond_0

    new-instance v0, Lcom/avg/tuneup/taskkiller/n;

    invoke-direct {v0}, Lcom/avg/tuneup/taskkiller/n;-><init>()V

    sget v1, Lcom/avg/a/e;->middle_part:I

    const-string v2, "TaskKillerFragment"

    invoke-virtual {p0, v0, v1, v2}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->a(Landroid/support/v4/app/Fragment;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->middle_part:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/taskkiller/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/avg/tuneup/taskkiller/n;->e(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/avg/tuneup/taskkiller/TaskKillerActivity;->f()Landroid/support/v4/app/o;

    move-result-object v0

    sget v1, Lcom/avg/a/e;->middle_part:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/taskkiller/n;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/avg/tuneup/taskkiller/n;->a(Ljava/lang/Object;)Ljava/util/ArrayList;

    :cond_0
    invoke-super {p0, p1}, Lcom/avg/tuneup/g;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
