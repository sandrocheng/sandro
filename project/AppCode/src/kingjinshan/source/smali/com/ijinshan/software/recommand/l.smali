.class final Lcom/ijinshan/software/recommand/l;
.super Landroid/os/AsyncTask;
.source "NecessaryInstalledActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;


# direct methods
.method synthetic constructor <init>(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/software/recommand/l;-><init>(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->e(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v2}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->f(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ijinshan/software/recommand/p;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->a(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 152
    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    new-instance v1, Lcom/ijinshan/software/recommand/j;

    iget-object v2, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    iget-object v3, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    iget-object v4, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v4}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/ijinshan/software/recommand/j;-><init>(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->a(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;Lcom/ijinshan/software/recommand/j;)Lcom/ijinshan/software/recommand/j;

    .line 154
    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->b(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->g(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Lcom/ijinshan/software/recommand/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->b(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/software/recommand/m;

    invoke-direct {v1, p0}, Lcom/ijinshan/software/recommand/m;-><init>(Lcom/ijinshan/software/recommand/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->c(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->b(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->c(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->a(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->e(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v2}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->f(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ijinshan/software/recommand/p;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->a(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    .line 142
    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    new-instance v1, Lcom/ijinshan/software/recommand/j;

    iget-object v2, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    iget-object v3, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    iget-object v4, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v4}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->d(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/ijinshan/software/recommand/j;-><init>(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->a(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;Lcom/ijinshan/software/recommand/j;)Lcom/ijinshan/software/recommand/j;

    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->b(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->g(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Lcom/ijinshan/software/recommand/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->b(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/software/recommand/m;

    invoke-direct {v1, p0}, Lcom/ijinshan/software/recommand/m;-><init>(Lcom/ijinshan/software/recommand/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->c(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->b(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->c(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ijinshan/software/recommand/l;->a:Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;->a(Lcom/ijinshan/software/recommand/NecessaryInstalledActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
