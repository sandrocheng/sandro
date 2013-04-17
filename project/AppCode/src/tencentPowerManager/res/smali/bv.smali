.class public final Lbv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lde;

.field private synthetic b:Lbu;


# direct methods
.method public constructor <init>(Lbu;Lde;)V
    .locals 0

    iput-object p1, p0, Lbv;->b:Lbu;

    iput-object p2, p0, Lbv;->a:Lde;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lbv;->a:Lde;

    invoke-virtual {v0}, Lde;->dismiss()V

    new-instance v0, Lax;

    iget-object v1, p0, Lbv;->b:Lbu;

    iget-object v1, v1, Lbu;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lax;-><init>(Landroid/content/Context;ZZ)V

    invoke-virtual {v0}, Lax;->c()V

    return-void
.end method
