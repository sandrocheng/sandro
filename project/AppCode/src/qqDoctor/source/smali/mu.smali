.class public final Lmu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lms;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmu;->a:J

    iput v2, p0, Lmu;->b:I

    iput v2, p0, Lmu;->d:I

    iput v2, p0, Lmu;->e:I

    iput v2, p0, Lmu;->f:I

    iput v2, p0, Lmu;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmu;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;IIIILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/util/List",
            "<",
            "Lms;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmu;->a:J

    iput v2, p0, Lmu;->b:I

    iput v2, p0, Lmu;->d:I

    iput v2, p0, Lmu;->e:I

    iput v2, p0, Lmu;->f:I

    iput v2, p0, Lmu;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmu;->i:Ljava/util/List;

    iput-wide p1, p0, Lmu;->a:J

    iput p3, p0, Lmu;->b:I

    iput-object p4, p0, Lmu;->c:Ljava/lang/String;

    iput p5, p0, Lmu;->d:I

    iput p6, p0, Lmu;->e:I

    iput p7, p0, Lmu;->f:I

    iput p8, p0, Lmu;->g:I

    iput-object p9, p0, Lmu;->i:Ljava/util/List;

    return-void
.end method
