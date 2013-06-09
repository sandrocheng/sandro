.class public final Lorg/antivirus/tuneup/bm;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/antivirus/tuneup/g;

.field public b:Lorg/antivirus/tuneup/ba;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/antivirus/tuneup/g;

    invoke-direct {v0}, Lorg/antivirus/tuneup/g;-><init>()V

    iput-object v0, p0, Lorg/antivirus/tuneup/bm;->a:Lorg/antivirus/tuneup/g;

    iget-object v0, p0, Lorg/antivirus/tuneup/bm;->a:Lorg/antivirus/tuneup/g;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/tuneup/g;->a(Landroid/content/Context;)V

    invoke-static {}, Lorg/antivirus/tuneup/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/tuneup/ba;->a(Landroid/content/Context;)Lorg/antivirus/tuneup/ba;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    iget-object v0, p0, Lorg/antivirus/tuneup/bm;->b:Lorg/antivirus/tuneup/ba;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/ba;->j()V

    :cond_0
    return-void
.end method
