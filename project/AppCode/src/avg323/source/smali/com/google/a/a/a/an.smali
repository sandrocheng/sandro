.class Lcom/google/a/a/a/an;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:J

.field private final c:J

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/a/a/an;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/a/a/a/an;->b:J

    iput-wide p4, p0, Lcom/google/a/a/a/an;->c:J

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/an;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/an;->a:Ljava/lang/String;

    return-void
.end method

.method b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/a/a/a/an;->b:J

    return-wide v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/a/a/a/an;->d:Ljava/lang/String;

    return-void
.end method

.method c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/a/a/a/an;->c:J

    return-wide v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/a/a/a/an;->d:Ljava/lang/String;

    return-object v0
.end method
