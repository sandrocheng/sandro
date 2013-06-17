.class synthetic Lcom/antivirus/ui/scan/results/h;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/antivirus/ui/scan/results/s;->values()[Lcom/antivirus/ui/scan/results/s;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/antivirus/ui/scan/results/h;->c:[I

    :try_start_0
    sget-object v0, Lcom/antivirus/ui/scan/results/h;->c:[I

    sget-object v1, Lcom/antivirus/ui/scan/results/s;->a:Lcom/antivirus/ui/scan/results/s;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/s;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/antivirus/ui/scan/results/h;->c:[I

    sget-object v1, Lcom/antivirus/ui/scan/results/s;->b:Lcom/antivirus/ui/scan/results/s;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/s;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/antivirus/ui/scan/results/h;->c:[I

    sget-object v1, Lcom/antivirus/ui/scan/results/s;->c:Lcom/antivirus/ui/scan/results/s;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/s;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    invoke-static {}, Lcom/antivirus/ui/scan/results/i;->values()[Lcom/antivirus/ui/scan/results/i;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/antivirus/ui/scan/results/h;->b:[I

    :try_start_3
    sget-object v0, Lcom/antivirus/ui/scan/results/h;->b:[I

    sget-object v1, Lcom/antivirus/ui/scan/results/i;->a:Lcom/antivirus/ui/scan/results/i;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/i;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v0, Lcom/antivirus/ui/scan/results/h;->b:[I

    sget-object v1, Lcom/antivirus/ui/scan/results/i;->b:Lcom/antivirus/ui/scan/results/i;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/i;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/antivirus/ui/scan/results/h;->b:[I

    sget-object v1, Lcom/antivirus/ui/scan/results/i;->c:Lcom/antivirus/ui/scan/results/i;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/i;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    invoke-static {}, Lcom/antivirus/ui/scan/results/c;->values()[Lcom/antivirus/ui/scan/results/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/antivirus/ui/scan/results/h;->a:[I

    :try_start_6
    sget-object v0, Lcom/antivirus/ui/scan/results/h;->a:[I

    sget-object v1, Lcom/antivirus/ui/scan/results/c;->a:Lcom/antivirus/ui/scan/results/c;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/antivirus/ui/scan/results/h;->a:[I

    sget-object v1, Lcom/antivirus/ui/scan/results/c;->b:Lcom/antivirus/ui/scan/results/c;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
