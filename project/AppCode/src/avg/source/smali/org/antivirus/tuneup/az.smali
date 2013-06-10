.class final Lorg/antivirus/tuneup/az;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/ay;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/ay;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/az;->a:Lorg/antivirus/tuneup/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/tuneup/az;->a:Lorg/antivirus/tuneup/ay;

    iget-object v0, v0, Lorg/antivirus/tuneup/ay;->b:Lorg/antivirus/tuneup/aw;

    iget-object v0, v0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/StorageActivity;->e(Lorg/antivirus/tuneup/StorageActivity;)Lorg/antivirus/tuneup/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/tuneup/b;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/antivirus/tuneup/az;->a:Lorg/antivirus/tuneup/ay;

    iget-object v0, v0, Lorg/antivirus/tuneup/ay;->b:Lorg/antivirus/tuneup/aw;

    iget-object v0, v0, Lorg/antivirus/tuneup/aw;->a:Lorg/antivirus/tuneup/StorageActivity;

    invoke-static {v0}, Lorg/antivirus/tuneup/StorageActivity;->f(Lorg/antivirus/tuneup/StorageActivity;)Z

    return-void
.end method
