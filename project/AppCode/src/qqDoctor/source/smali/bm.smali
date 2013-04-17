.class public final Lbm;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lbm;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbm;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lbm;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lbm;->d:Ljava/lang/String;

    return-void
.end method
