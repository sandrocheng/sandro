.class public final Lai;
.super Ljava/lang/Object;


# static fields
.field public static g:Lai;


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JI)V
    .locals 4

    const-wide/16 v2, 0x0

    const/16 v0, 0x5a

    if-ge p3, v0, :cond_1

    iput-wide p1, p0, Lai;->d:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x64

    if-ge p3, v0, :cond_2

    iput-wide p1, p0, Lai;->e:J

    goto :goto_0

    :cond_2
    iput-wide p1, p0, Lai;->f:J

    iget-wide v0, p0, Lai;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iput-wide p1, p0, Lai;->e:J

    :cond_3
    iget-wide v0, p0, Lai;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lai;->f:J

    const-wide/16 v2, 0x1388

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lai;->c:J

    goto :goto_0
.end method
