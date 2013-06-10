.class final Lorg/antivirus/tuneup/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/aw;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/aw;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/ax;->a:Lorg/antivirus/tuneup/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/16 v5, 0x8

    iget-object v0, p0, Lorg/antivirus/tuneup/ax;->a:Lorg/antivirus/tuneup/aw;

    iget-object v0, v0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/StorageActivity;->d(Lorg/antivirus/tuneup/StorageActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/ax;->a:Lorg/antivirus/tuneup/aw;

    iget-object v0, v0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    new-instance v1, Lorg/antivirus/tuneup/b;

    iget-object v2, p0, Lorg/antivirus/tuneup/ax;->a:Lorg/antivirus/tuneup/aw;

    iget-object v2, v2, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/antivirus/tuneup/ax;->a:Lorg/antivirus/tuneup/aw;

    iget-object v4, v4, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v4}, Lorg/antivirus/tuneup/StorageActivity;->a(Lorg/antivirus/tuneup/StorageActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/antivirus/tuneup/b;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-static {v0, v1}, Lorg/antivirus/tuneup/StorageActivity;->a(Lorg/antivirus/tuneup/StorageActivity;Lorg/antivirus/tuneup/b;)Lorg/antivirus/tuneup/b;

    iget-object v0, p0, Lorg/antivirus/tuneup/ax;->a:Lorg/antivirus/tuneup/aw;

    iget-object v0, v0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/StorageActivity;->d(Lorg/antivirus/tuneup/StorageActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/tuneup/ax;->a:Lorg/antivirus/tuneup/aw;

    iget-object v1, v1, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/StorageActivity;->e(Lorg/antivirus/tuneup/StorageActivity;)Lorg/antivirus/tuneup/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v0, p0, Lorg/antivirus/tuneup/ax;->a:Lorg/antivirus/tuneup/aw;

    iget-object v0, v0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    const v1, 0x7f0800b0

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/StorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/ax;->a:Lorg/antivirus/tuneup/aw;

    iget-object v0, v0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/StorageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lorg/antivirus/tuneup/ax;->a:Lorg/antivirus/tuneup/aw;

    iget-object v0, v0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/StorageActivity;->e(Lorg/antivirus/tuneup/StorageActivity;)Lorg/antivirus/tuneup/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/tuneup/b;->notifyDataSetChanged()V

    return-void
.end method
