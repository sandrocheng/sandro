.class final Lcom/ijinshan/software/recommand/m;
.super Ljava/lang/Object;
.source "NecessaryInstalledActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/software/recommand/l;


# direct methods
.method constructor <init>(Lcom/ijinshan/software/recommand/l;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/software/recommand/q;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/q;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/software/recommand/q;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/q;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/software/recommand/q;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/q;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/software/recommand/q;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/q;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/software/recommand/q;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/q;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 164
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 165
    iget-object v0, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-virtual {v0, v1}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->startActivity(Landroid/content/Intent;)V

    .line 175
    :cond_1
    :goto_0
    return-void

    .line 168
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    const-class v2, Lcom/ijinshan/software/recommand/FileDownloadService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string v2, "appName"

    iget-object v0, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/software/recommand/q;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/q;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string v2, "downURL"

    iget-object v0, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/software/recommand/q;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/q;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v2, "versionCode"

    iget-object v0, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/software/recommand/q;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/q;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 172
    const-string v2, "size"

    iget-object v0, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/software/recommand/q;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/q;->e:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/ijinshan/software/recommand/m;->a:Lcom/ijinshan/software/recommand/l;

    iget-object v0, v0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-virtual {v0, v1}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
