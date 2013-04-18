.class final Lcom/ijinshan/software/recommand/g;
.super Landroid/os/AsyncTask;
.source "HotTopActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/software/recommand/HotTopActivity;


# direct methods
.method synthetic constructor <init>(Lcom/ijinshan/software/recommand/HotTopActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ijinshan/software/recommand/g;-><init>(Lcom/ijinshan/software/recommand/HotTopActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/ijinshan/software/recommand/HotTopActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/HotTopActivity;->e(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v2}, Lcom/ijinshan/software/recommand/HotTopActivity;->f(Lcom/ijinshan/software/recommand/HotTopActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ijinshan/software/recommand/p;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/software/recommand/HotTopActivity;->a(Lcom/ijinshan/software/recommand/HotTopActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 151
    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->d(Lcom/ijinshan/software/recommand/HotTopActivity;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    new-instance v1, Lcom/ijinshan/software/recommand/e;

    iget-object v2, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    iget-object v3, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    iget-object v4, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v4}, Lcom/ijinshan/software/recommand/HotTopActivity;->d(Lcom/ijinshan/software/recommand/HotTopActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/ijinshan/software/recommand/e;-><init>(Lcom/ijinshan/software/recommand/HotTopActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/ijinshan/software/recommand/HotTopActivity;->a(Lcom/ijinshan/software/recommand/HotTopActivity;Lcom/ijinshan/software/recommand/e;)Lcom/ijinshan/software/recommand/e;

    .line 153
    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->b(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/HotTopActivity;->g(Lcom/ijinshan/software/recommand/HotTopActivity;)Lcom/ijinshan/software/recommand/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->b(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/software/recommand/h;

    invoke-direct {v1, p0}, Lcom/ijinshan/software/recommand/h;-><init>(Lcom/ijinshan/software/recommand/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->c(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->b(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->c(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->a(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/RelativeLayout;

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
    .line 141
    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    iget-object v1, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/HotTopActivity;->e(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v2}, Lcom/ijinshan/software/recommand/HotTopActivity;->f(Lcom/ijinshan/software/recommand/HotTopActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ijinshan/software/recommand/p;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ijinshan/software/recommand/HotTopActivity;->a(Lcom/ijinshan/software/recommand/HotTopActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    .line 141
    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->d(Lcom/ijinshan/software/recommand/HotTopActivity;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    new-instance v1, Lcom/ijinshan/software/recommand/e;

    iget-object v2, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    iget-object v3, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    iget-object v4, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v4}, Lcom/ijinshan/software/recommand/HotTopActivity;->d(Lcom/ijinshan/software/recommand/HotTopActivity;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/ijinshan/software/recommand/e;-><init>(Lcom/ijinshan/software/recommand/HotTopActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/ijinshan/software/recommand/HotTopActivity;->a(Lcom/ijinshan/software/recommand/HotTopActivity;Lcom/ijinshan/software/recommand/e;)Lcom/ijinshan/software/recommand/e;

    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->b(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v1}, Lcom/ijinshan/software/recommand/HotTopActivity;->g(Lcom/ijinshan/software/recommand/HotTopActivity;)Lcom/ijinshan/software/recommand/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->b(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/ijinshan/software/recommand/h;

    invoke-direct {v1, p0}, Lcom/ijinshan/software/recommand/h;-><init>(Lcom/ijinshan/software/recommand/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->c(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->b(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->c(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/ijinshan/software/recommand/g;->a:Lcom/ijinshan/software/recommand/HotTopActivity;

    invoke-static {v0}, Lcom/ijinshan/software/recommand/HotTopActivity;->a(Lcom/ijinshan/software/recommand/HotTopActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
