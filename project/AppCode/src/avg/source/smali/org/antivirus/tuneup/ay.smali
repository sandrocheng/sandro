.class final Lorg/antivirus/tuneup/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/pm/PackageManager;

.field final synthetic b:Lorg/antivirus/tuneup/aw;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/aw;Landroid/content/pm/PackageManager;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/ay;->b:Lorg/antivirus/tuneup/aw;

    iput-object p2, p0, Lorg/antivirus/tuneup/ay;->a:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/tuneup/ay;->b:Lorg/antivirus/tuneup/aw;

    iget-object v0, v0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    iget-object v0, p0, Lorg/antivirus/tuneup/ay;->a:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lorg/antivirus/tuneup/ay;->b:Lorg/antivirus/tuneup/aw;

    iget-object v1, v1, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v1}, Lorg/antivirus/tuneup/StorageActivity;->a(Lorg/antivirus/tuneup/StorageActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antivirus/tuneup/StorageActivity;->a(Landroid/content/pm/PackageManager;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/antivirus/tuneup/ay;->b:Lorg/antivirus/tuneup/aw;

    iget-object v0, v0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    new-instance v1, Lorg/antivirus/tuneup/az;

    invoke-direct {v1, p0}, Lorg/antivirus/tuneup/az;-><init>(Lorg/antivirus/tuneup/ay;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/StorageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
