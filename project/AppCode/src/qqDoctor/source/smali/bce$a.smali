.class final Lbce$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbce;)V
    .locals 0

    invoke-direct {p0}, Lbce$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lmb$a;

    check-cast p2, Lmb$a;

    iget-wide v0, p2, Lmb$a;->h:J

    iget-wide v2, p1, Lmb$a;->h:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
