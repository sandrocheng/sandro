.class public final Lmb$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:J

.field public g:Ljava/lang/String;

.field public h:J

.field public final synthetic i:Lmb;


# direct methods
.method public constructor <init>(Lmb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lmb$a;->i:Lmb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lmb$a;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmb$a;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmb$a;->c:Ljava/lang/String;

    iput v1, p0, Lmb$a;->d:I

    iput v1, p0, Lmb$a;->e:I

    iput-wide v2, p0, Lmb$a;->f:J

    const-string v0, ""

    iput-object v0, p0, Lmb$a;->g:Ljava/lang/String;

    iput-wide v2, p0, Lmb$a;->h:J

    if-eqz p3, :cond_0

    iput-object p3, p0, Lmb$a;->a:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lmb$a;->b:Ljava/lang/String;

    :cond_1
    if-eqz p4, :cond_2

    iput-object p4, p0, Lmb$a;->g:Ljava/lang/String;

    :cond_2
    return-void
.end method
