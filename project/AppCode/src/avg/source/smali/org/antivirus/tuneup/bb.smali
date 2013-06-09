.class final Lorg/antivirus/tuneup/bb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/ba;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/ba;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/bb;->a:Lorg/antivirus/tuneup/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/tuneup/bb;->a:Lorg/antivirus/tuneup/ba;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/antivirus/tuneup/ba;->a(ZI)[D

    return-void
.end method
