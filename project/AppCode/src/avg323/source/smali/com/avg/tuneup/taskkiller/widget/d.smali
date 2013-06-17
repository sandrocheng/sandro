.class public final enum Lcom/avg/tuneup/taskkiller/widget/d;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/avg/widget/model/plugin/a;


# static fields
.field public static final enum a:Lcom/avg/tuneup/taskkiller/widget/d;

.field private static final synthetic c:[Lcom/avg/tuneup/taskkiller/widget/d;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/avg/tuneup/taskkiller/widget/d;

    const-string v1, "TASK_KILLER_STATE"

    sget v2, Lcom/avg/a/d;->widget_task_killer:I

    invoke-direct {v0, v1, v3, v2}, Lcom/avg/tuneup/taskkiller/widget/d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avg/tuneup/taskkiller/widget/d;->a:Lcom/avg/tuneup/taskkiller/widget/d;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/avg/tuneup/taskkiller/widget/d;

    sget-object v1, Lcom/avg/tuneup/taskkiller/widget/d;->a:Lcom/avg/tuneup/taskkiller/widget/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/avg/tuneup/taskkiller/widget/d;->c:[Lcom/avg/tuneup/taskkiller/widget/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/avg/tuneup/taskkiller/widget/d;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avg/tuneup/taskkiller/widget/d;
    .locals 1

    const-class v0, Lcom/avg/tuneup/taskkiller/widget/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avg/tuneup/taskkiller/widget/d;

    return-object v0
.end method

.method public static values()[Lcom/avg/tuneup/taskkiller/widget/d;
    .locals 1

    sget-object v0, Lcom/avg/tuneup/taskkiller/widget/d;->c:[Lcom/avg/tuneup/taskkiller/widget/d;

    invoke-virtual {v0}, [Lcom/avg/tuneup/taskkiller/widget/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avg/tuneup/taskkiller/widget/d;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/avg/tuneup/taskkiller/widget/d;->b:I

    return v0
.end method
