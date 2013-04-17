.class public final Lkf;
.super Ljava/lang/Object;


# instance fields
.field public a:Lhs;

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lkf;->b:I

    invoke-static {}, Lhs;->a()Lhs;

    move-result-object v0

    iput-object v0, p0, Lkf;->a:Lhs;

    return-void
.end method
