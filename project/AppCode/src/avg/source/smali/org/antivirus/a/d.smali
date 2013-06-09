.class final Lorg/antivirus/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/a/h;

.field final synthetic b:Lorg/antivirus/a/c;


# direct methods
.method constructor <init>(Lorg/antivirus/a/c;Lorg/antivirus/a/h;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/a/d;->b:Lorg/antivirus/a/c;

    iput-object p2, p0, Lorg/antivirus/a/d;->a:Lorg/antivirus/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/a/d;->b:Lorg/antivirus/a/c;

    iget-object v0, v0, Lorg/antivirus/a/c;->b:Lorg/antivirus/a/a;

    iget-object v0, v0, Lorg/antivirus/a/a;->b:Landroid/os/Handler;

    new-instance v1, Lorg/antivirus/a/e;

    invoke-direct {v1, p0}, Lorg/antivirus/a/e;-><init>(Lorg/antivirus/a/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
