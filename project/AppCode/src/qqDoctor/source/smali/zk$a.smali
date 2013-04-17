.class public final Lzk$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:J

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzk$a;->a:Ljava/util/List;

    iput v2, p0, Lzk$a;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzk$a;->c:J

    iput-boolean v2, p0, Lzk$a;->d:Z

    return-void
.end method
