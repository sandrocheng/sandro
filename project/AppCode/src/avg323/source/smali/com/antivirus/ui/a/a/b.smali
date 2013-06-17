.class public abstract Lcom/antivirus/ui/a/a/b;
.super Lcom/avg/ui/general/fragments/d;


# instance fields
.field protected i:Lcom/antivirus/core/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/ui/general/fragments/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/avg/ui/general/fragments/d;->a(Landroid/app/Activity;)V

    new-instance v0, Lcom/antivirus/core/b;

    invoke-direct {v0, p1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/ui/a/a/b;->i:Lcom/antivirus/core/b;

    return-void
.end method
