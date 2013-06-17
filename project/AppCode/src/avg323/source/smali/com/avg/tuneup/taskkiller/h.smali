.class Lcom/avg/tuneup/taskkiller/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/widget/LinearLayout;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/view/LayoutInflater;

.field final synthetic e:Lcom/avg/tuneup/taskkiller/d;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/taskkiller/d;ZLandroid/widget/LinearLayout;Landroid/view/View;Landroid/view/LayoutInflater;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    iput-boolean p2, p0, Lcom/avg/tuneup/taskkiller/h;->a:Z

    iput-object p3, p0, Lcom/avg/tuneup/taskkiller/h;->b:Landroid/widget/LinearLayout;

    iput-object p4, p0, Lcom/avg/tuneup/taskkiller/h;->c:Landroid/view/View;

    iput-object p5, p0, Lcom/avg/tuneup/taskkiller/h;->d:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v4, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lcom/avg/tuneup/taskkiller/h;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v1}, Lcom/avg/tuneup/taskkiller/d;->e(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/tuneup/taskkiller/o;

    move-result-object v1

    iget-object v2, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v2}, Lcom/avg/tuneup/taskkiller/d;->d(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    iget-object v5, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    iget-boolean v5, v5, Lcom/avg/tuneup/taskkiller/d;->c:Z

    invoke-virtual {v1, v2, v5, v4}, Lcom/avg/tuneup/taskkiller/o;->a(Landroid/content/Context;ZZ)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avg/tuneup/taskkiller/d;->a(Lcom/avg/tuneup/taskkiller/d;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->f(Lcom/avg/tuneup/taskkiller/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->g(Lcom/avg/tuneup/taskkiller/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->h(Lcom/avg/tuneup/taskkiller/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->k(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    new-instance v2, Lcom/avg/tuneup/taskkiller/i;

    invoke-direct {v2, p0}, Lcom/avg/tuneup/taskkiller/i;-><init>(Lcom/avg/tuneup/taskkiller/h;)V

    invoke-virtual {v0, v2}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->f(Lcom/avg/tuneup/taskkiller/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_3

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->f(Lcom/avg/tuneup/taskkiller/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/avg/tuneup/taskkiller/b;

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/h;->d:Landroid/view/LayoutInflater;

    sget v1, Lcom/avg/a/f;->uninstall_apps_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v0, Lcom/avg/a/e;->desc:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-virtual {v1}, Lcom/avg/tuneup/taskkiller/d;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/avg/a/e;->name:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v5, Lcom/avg/tuneup/taskkiller/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/avg/a/e;->desc:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-virtual {v1, v5}, Lcom/avg/tuneup/taskkiller/d;->a(Lcom/avg/tuneup/taskkiller/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/avg/a/e;->closeImage:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget v1, Lcom/avg/a/e;->image:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/avg/tuneup/taskkiller/j;

    invoke-direct {v1, p0, v2}, Lcom/avg/tuneup/taskkiller/j;-><init>(Lcom/avg/tuneup/taskkiller/h;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->g(Lcom/avg/tuneup/taskkiller/d;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_1
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->h(Lcom/avg/tuneup/taskkiller/d;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->p(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/ui/general/a/a;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, v5, Lcom/avg/tuneup/taskkiller/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v5, Lcom/avg/tuneup/taskkiller/b;->f:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/avg/tuneup/taskkiller/h;->e:Lcom/avg/tuneup/taskkiller/d;

    invoke-static {v0}, Lcom/avg/tuneup/taskkiller/d;->q(Lcom/avg/tuneup/taskkiller/d;)Lcom/avg/ui/general/a/a;

    move-result-object v7

    new-instance v0, Lcom/avg/tuneup/taskkiller/l;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/avg/tuneup/taskkiller/l;-><init>(Lcom/avg/tuneup/taskkiller/h;Landroid/view/View;Ljava/util/ArrayList;ILcom/avg/tuneup/taskkiller/b;)V

    invoke-virtual {v7, v0}, Lcom/avg/ui/general/a/a;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_3
    return-void
.end method
