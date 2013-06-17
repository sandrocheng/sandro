.class public Lcom/antivirus/a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/avg/toolkit/h;


# instance fields
.field final synthetic a:Lcom/antivirus/AVService;


# direct methods
.method public constructor <init>(Lcom/antivirus/AVService;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/a;->a:Lcom/antivirus/AVService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Messenger;Lcom/antivirus/core/scanners/n;Lcom/antivirus/core/scanners/c;)I
    .locals 1

    iget-object v0, p0, Lcom/antivirus/a;->a:Lcom/antivirus/AVService;

    invoke-static {v0}, Lcom/antivirus/AVService;->a(Lcom/antivirus/AVService;)Lcom/antivirus/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/a;->a:Lcom/antivirus/AVService;

    invoke-static {v0}, Lcom/antivirus/AVService;->a(Lcom/antivirus/AVService;)Lcom/antivirus/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/antivirus/g;->a(Landroid/os/Messenger;Lcom/antivirus/core/scanners/n;Lcom/antivirus/core/scanners/c;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/a;->a:Lcom/antivirus/AVService;

    invoke-static {v0}, Lcom/antivirus/AVService;->a(Lcom/antivirus/AVService;)Lcom/antivirus/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/antivirus/a;->a:Lcom/antivirus/AVService;

    invoke-static {v0}, Lcom/antivirus/AVService;->a(Lcom/antivirus/AVService;)Lcom/antivirus/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/antivirus/g;->b(Lcom/antivirus/core/scanners/c;)Lcom/antivirus/core/scanners/h;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lcom/avg/toolkit/e/a;
    .locals 1

    iget-object v0, p0, Lcom/antivirus/a;->a:Lcom/antivirus/AVService;

    iget-object v0, v0, Lcom/antivirus/AVService;->b:Lcom/avg/toolkit/e/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/avg/toolkit/e/e;->a()Lcom/avg/toolkit/e/a;

    move-result-object v0

    goto :goto_0
.end method
