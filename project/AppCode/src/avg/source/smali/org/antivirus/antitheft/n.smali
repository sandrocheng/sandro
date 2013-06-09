.class final Lorg/antivirus/antitheft/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/antitheft/u;

.field final synthetic b:Lorg/antivirus/antitheft/j;


# direct methods
.method constructor <init>(Lorg/antivirus/antitheft/j;Lorg/antivirus/antitheft/u;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/antitheft/n;->b:Lorg/antivirus/antitheft/j;

    iput-object p2, p0, Lorg/antivirus/antitheft/n;->a:Lorg/antivirus/antitheft/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/antitheft/n;->b:Lorg/antivirus/antitheft/j;

    iget-object v0, v0, Lorg/antivirus/antitheft/j;->c:Lorg/antivirus/core/Engine;

    iget-object v1, p0, Lorg/antivirus/antitheft/n;->a:Lorg/antivirus/antitheft/u;

    invoke-static {v0, v1}, Lorg/antivirus/antitheft/b;->a(Lorg/antivirus/core/Engine;Lorg/antivirus/antitheft/u;)V

    return-void
.end method
