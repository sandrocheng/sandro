.class final Lorg/antivirus/tuneup/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/StorageActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/StorageActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/StorageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/StorageActivity;->a(Lorg/antivirus/tuneup/StorageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    iget-object v2, p0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v2, v0}, Lorg/antivirus/tuneup/StorageActivity;->a(Lorg/antivirus/tuneup/StorageActivity;Landroid/content/pm/PackageManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/antivirus/tuneup/StorageActivity;->a(Lorg/antivirus/tuneup/StorageActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/StorageActivity;->b(Lorg/antivirus/tuneup/StorageActivity;)V

    iget-object v1, p0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/StorageActivity;->c(Lorg/antivirus/tuneup/StorageActivity;)V

    :cond_0
    iget-object v1, p0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    new-instance v2, Lorg/antivirus/tuneup/ax;

    invoke-direct {v2, p0}, Lorg/antivirus/tuneup/ax;-><init>(Lorg/antivirus/tuneup/aw;)V

    invoke-virtual {v1, v2}, Lorg/antivirus/tuneup/StorageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lorg/antivirus/tuneup/ay;

    invoke-direct {v2, p0, v0}, Lorg/antivirus/tuneup/ay;-><init>(Lorg/antivirus/tuneup/aw;Landroid/content/pm/PackageManager;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
