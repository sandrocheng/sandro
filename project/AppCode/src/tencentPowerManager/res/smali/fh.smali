.class public Lfh;
.super Ljava/lang/Object;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J

.field public h:J

.field public i:F

.field public j:I

.field public k:Ljava/lang/Thread;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfh;->c:Z

    const/4 v0, -0x2

    iput v0, p0, Lfh;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lfh;->g:J

    sget-object v0, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    const-string v0, ""

    iput-object v0, p0, Lfh;->l:Ljava/lang/String;

    return-void
.end method
