.class public final Lbu;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lz;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbu;->a:Landroid/content/Context;

    invoke-static {}, Ls$a;->g()Lz;

    move-result-object v0

    iput-object v0, p0, Lbu;->b:Lz;

    return-void
.end method
