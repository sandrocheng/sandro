.class public final Lani$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lani;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:J

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lani$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lani$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lani$a;->c:Ljava/lang/String;

    iput-object p4, p0, Lani$a;->d:Ljava/lang/String;

    iput-object p5, p0, Lani$a;->e:Ljava/lang/String;

    iput-wide p6, p0, Lani$a;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lani$a;->g:Z

    iput-boolean p8, p0, Lani$a;->h:Z

    return-void
.end method
