.class final Lbtp$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbtp$a;->a:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lbtp$a;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbtp$a;->c:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lbtp$a;->d:J

    return-void
.end method
