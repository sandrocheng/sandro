.class public final enum Lcom/avast/android/mobilesecurity/vps/c/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/avast/android/mobilesecurity/vps/c/f;

.field public static final enum b:Lcom/avast/android/mobilesecurity/vps/c/f;

.field public static final enum c:Lcom/avast/android/mobilesecurity/vps/c/f;

.field public static final enum d:Lcom/avast/android/mobilesecurity/vps/c/f;

.field private static e:La/a/k;

.field private static final synthetic g:[Lcom/avast/android/mobilesecurity/vps/c/f;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/c/f;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5, v2}, Lcom/avast/android/mobilesecurity/vps/c/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->a:Lcom/avast/android/mobilesecurity/vps/c/f;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/c/f;

    const-string v1, "FP_REPORT"

    invoke-direct {v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/vps/c/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->b:Lcom/avast/android/mobilesecurity/vps/c/f;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/c/f;

    const-string v1, "NOTHING"

    invoke-direct {v0, v1, v3, v4}, Lcom/avast/android/mobilesecurity/vps/c/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->c:Lcom/avast/android/mobilesecurity/vps/c/f;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/c/f;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v4, v6}, Lcom/avast/android/mobilesecurity/vps/c/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->d:Lcom/avast/android/mobilesecurity/vps/c/f;

    new-array v0, v6, [Lcom/avast/android/mobilesecurity/vps/c/f;

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/c/f;->a:Lcom/avast/android/mobilesecurity/vps/c/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/c/f;->b:Lcom/avast/android/mobilesecurity/vps/c/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/c/f;->c:Lcom/avast/android/mobilesecurity/vps/c/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avast/android/mobilesecurity/vps/c/f;->d:Lcom/avast/android/mobilesecurity/vps/c/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->g:[Lcom/avast/android/mobilesecurity/vps/c/f;

    new-instance v0, Lcom/avast/android/mobilesecurity/vps/c/g;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/vps/c/g;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->e:La/a/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/avast/android/mobilesecurity/vps/c/f;->f:I

    return-void
.end method

.method public static a(I)Lcom/avast/android/mobilesecurity/vps/c/f;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->a:Lcom/avast/android/mobilesecurity/vps/c/f;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->b:Lcom/avast/android/mobilesecurity/vps/c/f;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->c:Lcom/avast/android/mobilesecurity/vps/c/f;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->d:Lcom/avast/android/mobilesecurity/vps/c/f;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avast/android/mobilesecurity/vps/c/f;
    .locals 1

    const-class v0, Lcom/avast/android/mobilesecurity/vps/c/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/vps/c/f;

    return-object v0
.end method

.method public static values()[Lcom/avast/android/mobilesecurity/vps/c/f;
    .locals 1

    sget-object v0, Lcom/avast/android/mobilesecurity/vps/c/f;->g:[Lcom/avast/android/mobilesecurity/vps/c/f;

    invoke-virtual {v0}, [Lcom/avast/android/mobilesecurity/vps/c/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avast/android/mobilesecurity/vps/c/f;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/avast/android/mobilesecurity/vps/c/f;->f:I

    return v0
.end method
