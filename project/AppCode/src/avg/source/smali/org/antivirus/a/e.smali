.class final Lorg/antivirus/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/a/d;


# direct methods
.method constructor <init>(Lorg/antivirus/a/d;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/a/e;->a:Lorg/antivirus/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/a/e;->a:Lorg/antivirus/a/d;

    iget-object v0, v0, Lorg/antivirus/a/d;->b:Lorg/antivirus/a/c;

    iget-object v0, v0, Lorg/antivirus/a/c;->b:Lorg/antivirus/a/a;

    iget-object v0, v0, Lorg/antivirus/a/a;->a:Lorg/antivirus/a/h;

    iget-object v1, p0, Lorg/antivirus/a/e;->a:Lorg/antivirus/a/d;

    iget-object v1, v1, Lorg/antivirus/a/d;->a:Lorg/antivirus/a/h;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/antivirus/a/e;->a:Lorg/antivirus/a/d;

    iget-object v0, v0, Lorg/antivirus/a/d;->b:Lorg/antivirus/a/c;

    iget-object v0, v0, Lorg/antivirus/a/c;->b:Lorg/antivirus/a/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/antivirus/a/a;->a:Lorg/antivirus/a/h;

    :cond_0
    return-void
.end method
